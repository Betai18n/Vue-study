import Vue from 'vue'
import Router from 'vue-router'
//import HelloWorld from '@/components/HelloWorld'
//import Home from '@/components/HelloFromVux'
import list1 from '@/pages/list1'
import list2 from '@/pages/list2'
import index from '@/pages/index'
import list3 from '@/pages/list3'

Vue.use(Router)

export default new Router({
  routes: [{
    path: '/',
    name: 'index',
    component: index
  },
  {
    path: '/list1',
    name: 'list1',
    component: list1 
  },
  {
    path: '/list2',
    name: 'list2',
    component: list2
  },
  {
    path: '/list3',
    name: 'list3',
    component: list3
  }
]})

// export default new Router({
//   routes: [
//     {
//       path: '/',
//       name: 'HelloWorld',
//       component: HelloWorld
//     }
//   ]
// })