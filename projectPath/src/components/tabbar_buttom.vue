<template>
    <div>
        <tabbar>
          <tabbar-item selected link='/' @on-item-click="add()">
              <img slot="icon" src="../assets/logo.png">
              <span slot="label">Wechat</span>
          </tabbar-item>
          <tabbar-item show-dot  link='/list1'>
              <img slot="icon" src="../assets/vux_logo.png">
              <span slot="label">Message</span>
          </tabbar-item>
          <tabbar-item  link='/list2'>
              <img slot="icon" src="../assets/logo.png">
              <span slot="label">Explore</span>
          </tabbar-item>
          <tabbar-item :badge="num" link='/list3'>
              <img slot="icon" src="../assets/vux_logo.png">
              <span slot="label">News</span>
          </tabbar-item>
        </tabbar>
    </div>
</template>

<script>
import Vue from 'vue'
import store from '../vuex/status'

    export default{
        name: 'tabbar_buttom',
        data() {
            return{
                //num: '0'
            }
        },
        computed: {
            getCount: function(){
                console.log("get count")
                return store.state.count.toString()
            },
            num: {
                get: function(){
                    return store.state.count.toString()
                }
                // set: function(){
                //     store.commit('increment')
                // }
            }
        },
        methods: {
            add: function(){
                store.commit('increment')
                console.log("count add")
            },
            gets:function(){
                num = store.state.count
            }
        }
    }
</script>
