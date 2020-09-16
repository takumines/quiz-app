import './bootstrap'
import Vue from 'vue';
import TodoList from './components/TodoListComponent';

new Vue({
    el: 'app',
    components: {
        app: TodoList
    }
})