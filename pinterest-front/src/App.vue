<template>
  <div id="app">
  
  <Header/>

   <router-view /> 
            <!-- <router-link class="nav-link pr-3" to="/login">Sign in</router-link> -->
            <!-- <router-link class="btn btn-outline-primary" to="/signup">Sign up</router-link> -->
 
  </div>
</template>

<script>







// import Article from './components/Article.vue'
 import Header from './components/Header.vue'

export default {
  name: 'App',
  components: {
     
     Header
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

</style>
