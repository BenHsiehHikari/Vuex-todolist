<template>
    <div class="add-todo">
        <h3>待辦事項</h3>
        <div class="add">
            <form
                action=""
                @submit="onSubmit"
            >
                <input
                    type="text"
                    class="input-todos"
                    v-model="title"
                    placeholder="新增代辦事項.."
                >
                <input
                    type="submit"
                    class="send-btn"
                    value="送出"
                >
            </form>
        </div>
    </div>
</template>

<script>
    import {
        mapActions
    } from 'vuex'
    export default {
        name: "AddTodo",
        data() {
            return {
                title: ''
            }
        },
        methods: {
            ...mapActions(["addTodo"]),
            onSubmit(e) {
                e.preventDefault();
                this.addTodo(this.title);
            }
        }
    }
</script>

<style scoped>
</style>