<template>
  <nav class="navbar is-warning">
  <div class="navbar-brand">
    <div class="navbar-burger" data-target="navbarExampleTransparentExample">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>

  <div  class="navbar-menu">
    <div class="navbar-start">
        <router-link class="nav-link pr-3" to="/profile"> Profile</router-link>
        <router-link class="nav-link pr-3" to="/article"> New Article </router-link>  
         <router-link class="nav-link pr-3" to="/user-article"> Your Posts</router-link>  
          <router-link  to= "/home" class="nav-link pr-3"> Articles Feed</router-link>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="field is-grouped">
          <p class="control">
             <router-link class="nav-link pr-3" to="/login">Sign in</router-link>
            <router-link class="nav-link pr-3" to="/signup">Sign up</router-link>
          </p>
        </div>
      </div>
    </div>
  </div>
</nav>
</template>

<script>
export default {
  name: 'Header',
  data() {
      return {

      }
  }
}
</script>


<style>
.navbar-menu {
    font-size: 25px;
    padding: 25px;
}

</style>