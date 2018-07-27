'use strict'
const path = require('path')
const utils = require('./utils')
const config = require('../config')
const vueLoaderConfig = require('./vue-loader.conf')
const HtmlWebpackPlugin = require('html-webpack-plugin')
var WriteFilePlugin = require('write-file-webpack-plugin')
var jsJspMapData = require('../config/js-jsp-map')
const CopyWebpackPlugin = require('copy-webpack-plugin')

// function resolve (dir) {
//   return path.join(__dirname, '..', dir)
// }
const pathResolve = utils.pathResolve
const entries = {}
jsJspMapData.forEach(item => {
  entries[item.name] = [pathResolve.src('polyfills/index.js'), item.jsPath]
})

const htmlWebpackPlugins = utils.getJspMapPath().map(function (mapEntry) {
  const conf = {
    filename: mapEntry.dist, // 生成的html存放路径，相对于path
    template: mapEntry.src, // html模板路径
    inject: false,
    cache: false
  }
  const indexJsp = jsJspMapData.filter(item => {
    return item.jspPath === mapEntry.dist
  })[0]
  if (indexJsp) {
    conf.inject = 'body'
    conf.chunks = ['manifest', 'vendor', indexJsp.name]
  }
  return new HtmlWebpackPlugin(conf)
})


module.exports = {
  // context: path.resolve(__dirname, '../'),
  // entry: {
  //   app: './src/main.js'
  // },
  context: pathResolve.root(),
  entry: entries,
  output: {
    path: config.build.assetsRoot,
    //filename: '[name].js',
    filename: process.env.NODE_ENV === 'production'
      ? utils.assetsPath('js/[name].[chunkhash].js')
      : utils.assetsPath('js/[name].js?[hash]'),
    chunkFilename: process.env.NODE_ENV === 'production'
      ? utils.assetsPath('js/[id].chunk.[chunkhash].js')
      : utils.assetsPath('js/[id].chunk.js?[hash]'),
    publicPath: process.env.NODE_ENV === 'production'
      ? config.build.assetsPublicPath
      : config.dev.assetsPublicPath
  },
  resolve: {
    extensions: ['.js', '.vue', '.json'],
    alias: {
      'vue$': 'vue/dist/vue.esm.js',
      //'@': resolve('src'),
      '@': pathResolve.src(),
    }
  },
  module: {
    rules: [
      ...(config.dev.useEslint? [{
        test: /\.(js|vue)$/,
        loader: 'eslint-loader',
        enforce: 'pre',
        include: [pathResolve.src()],
        options: {
          formatter: require('eslint-friendly-formatter'),
          emitWarning: !config.dev.showEslintErrorsInOverlay
        }
      }] : []),
      {
        test: /\.vue$/,
        loader: 'vue-loader',
        options: vueLoaderConfig
      },
      {
        test: /\.js$/,
        loader: 'babel-loader',
        include: [pathResolve.src()]
        //include: [resolve('src'), resolve('test'), resolve('node_modules/webpack-dev-server/client')]
      },
      {
        test: /\.html$/,
        loader: 'html?-minimize' // 避免压缩html,https://github.com/webpack/html-loader/issues/50
      },
      {
        test: /\.jsp$/,
        loader: 'raw-loader'
      },
      {
        test: /\.(png|jpe?g|gif|svg)(\?.*)?$/,
        loader: 'url-loader',
        options: {
          limit: 10000,
          name: utils.assetsPath('img/[name].[hash:7].[ext]')
        }
      },
      {
        test: /\.(mp4|webm|ogg|mp3|wav|flac|aac)(\?.*)?$/,
        loader: 'url-loader',
        options: {
          limit: 10000,
          name: utils.assetsPath('media/[name].[hash:7].[ext]')
        }
      },
      {
        test: /\.(woff2?|eot|ttf|otf)(\?.*)?$/,
        loader: 'url-loader',
        options: {
          limit: 10000,
          name: utils.assetsPath('fonts/[name].[hash:7].[ext]')
        }
      },
      {
        test: /\.sass$/,
        loaders: ['style', 'css', 'sass']
      }
    ]
  },
  node: {
    // prevent webpack from injecting useless setImmediate polyfill because Vue
    // source contains it (although only uses it if it's native).
    setImmediate: false,
    // prevent webpack from injecting mocks to Node native modules
    // that does not make sense for the client
    dgram: 'empty',
    fs: 'empty',
    net: 'empty',
    tls: 'empty',
    child_process: 'empty'
  },
  plugins: [
    new CopyWebpackPlugin([
      {
        from: pathResolve.src('static'),
        to: pathResolve.dist(),
        ignore: ['README.md']
      }
    ]),
    ...htmlWebpackPlugins,
    // copy custom static assets
    new WriteFilePlugin({
      // test: /^((?!\.hot-update).)*$/,
      test: /\.jsp|\.tld|\.xml$/,
    })
  ]
}
