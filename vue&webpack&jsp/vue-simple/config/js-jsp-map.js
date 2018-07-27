'use strict'
const utils = require('../build/utils')

const pathResolve = utils.pathResolve

function jsPathResolve(path) {
  return pathResolve.src('pages', path)
}

function jspPathResolve(path) {
  return pathResolve.dist('WEB-INF/jsp', path)
}

const jsJspMap = [
  { name: 'index', jsPath: jsPathResolve('new/index.js'), jspPath: jspPathResolve('new/index.jsp') },
  //{ name: 'start', jsPath: jsPathResolve('start/index.js'), jspPath: jspPathResolve('start/index.jsp') },
  //{ name: 'contact', jsPath: jsPathResolve('contact/index.js'), jspPath: jspPathResolve('contact/index.jsp') }
]

module.exports = jsJspMap
