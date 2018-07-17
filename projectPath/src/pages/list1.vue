<template>
    <div>
        <span>list1</span>
        <br>
        <span>{{getCount}}</span>
        <x-button type="primary" @click.native="add()">add</x-button>
    </div>
</template>

<script>
    import store from '../vuex/status'
    export default{
        name: 'list1',
        data(){
            return{

            }
        },
        computed: {
            getCount(){
                return store.state.count
            }
        },
        methods: {
            add(){
                store.commit('increment')
            }
        }
    }
</script>