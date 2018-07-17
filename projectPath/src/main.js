// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import FastClick from 'fastclick'
//import VueRouter from 'vue-router'
import App from './App'
import store from './vuex/status'

import router from './router/index'



import { 
  Tabbar, 
  TabbarItem,
  Group,
  Cell, 
  ViewBox,
  XButton,
  XCircle,
  VChart,
  VTooltip, 
  VLine, 
  VScale    
} from 'vux'


import tabbar_buttom from '@/components/tabbar_buttom'



Vue.component('tabbar', Tabbar)
Vue.component('tabbar-item', TabbarItem)
Vue.component('group',Group)
Vue.component('cell',Cell)
Vue.component('view-box',ViewBox)
Vue.component('x-button',XButton )
Vue.component('x-circle',XCircle)
Vue.component('v-chart',VChart)
Vue.component('v-tooltip',VTooltip)
Vue.component('v-line',VLine)
Vue.component('v-scale',VScale)





Vue.component('tabbar_buttom',tabbar_buttom)
//Vue.use(VueRouter)

// const routes = [{
//   path: '/',
//   component: Home
// }]
// const router = new VueRouter({
//   routes
// })


FastClick.attach(document.body)

Vue.config.productionTip = true

/* eslint-disable no-new */
var Vueapp = new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app-box')
