<template>
  <div>
    <div class="legend">
      <span>
        <span class="incomplete-box"></span>
        <span>未完成</span>
      </span>
      <span>
        <span class="complete-box"></span>
        <span>完成</span>
      </span>
    </div>
    <div class="todos">
      <div
        @dblclick="onDblClick(todo)"
        v-for="todo in allTodos"
        :key="todo.id"
        class="todo"
        v-bind:class="{'is-complete':todo.completed}"
      >
        {{ todo.title }}
        <i
          @click="deleteTodo(todo.id)"
          class="fas fa-trash-alt"
        ></i>
      </div>
    </div>
  </div>
</template>

<script>
  import {
    mapGetters,
    mapActions
  } from "vuex";
  export default {
    name: "Todos",
    methods: {
      ...mapActions(["fetchTodos", "deleteTodo", "updateTodo"]),
      onDblClick(todo) {
        const updTodo = {
          id: todo.id,
          title: todo.title,
          completed: !todo.completed
        };
        this.updateTodo(updTodo);
      }
    },
    computed: mapGetters(["allTodos"]),
    created() {
      this.fetchTodos();
    }
  };
</script>

<style scoped>
</style>