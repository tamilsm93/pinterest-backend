import Vue from 'vue'
import Router from 'vue-router'
import  Signup from '@/components/Signup.vue'
import  Login from '@/components/Login.vue'
import  Article from '@/components/Article.vue'
import Profile from '@/components/Profile.vue'
import  Home from '@/components/Home.vue'
import  UserArticle from '@/components/UserArticle.vue'
 import store from '@/store'



Vue.use(Router)

export default new Router ({
    mode: 'history',
    routes: [
        {
            path: '/signup',
            name: 'signup',
            component: Signup
        },
        {
            path: '/login',
            name: 'login',
            component: Login,
           
        },
        {
            path: '/',
            name: 'login',
            component: Login,
           
        },
        {
            path: '/profile',
            name: 'profile',
            component: Profile,
           
        },
        {
            path: '/user-article',
            name: 'user-article',
            component: UserArticle,

        },
        {
            path: '/article',
            name: 'article',
            component: Article,
        },
        {
            path: '/home',
            name: 'home',
            component: Home,
            beforeEnter: (to, from, next) => {
                if(store.state.authenticated == false ){
                    next("/login")
                } else {
                    next();
                } 
                 
            }
        },
    ]
})
