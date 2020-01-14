<template>
    <div>
        <h3>新增待辦事項</h3>
        <div class="add">
            <form action=""
                  @submit="onSubmit">
                <input type="text"
                       v-model="title"
                       placeholder="新增代辦事項">
                <input type="submit"
                       value="送出">
            </form>
        </div>
    </div>
</template>

<script>
import {mapActions} from 'vuex'
export default {
    name: "AddTodo",
    data(){
        return {
            title:''
        }
    },
    methods:{
        ...mapActions(['addTodo']),
        onSubmit(e){
            e.preventDefault();
            this.addTodo(this.title);
        }
    }
}
</script>

<style scoped>
    form{
        display: flex;
    }
    [type="text"]{
        flex:10;
        padding: 10px;
        border:2px solid #41b773;
        outline: 0;
        border-radius: 5px;
    }
    [type="submit"]{
        flex:2;
        background-color: #41b773;
        color:#fff;
        border:2px solid #41b773;
        cursor: pointer;
    }
</style>
