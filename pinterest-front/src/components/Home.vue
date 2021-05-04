 <template>
 <div>
     <div  class="box" id="feed" v-for="article in articles" :key="article">
       <!-- {{ articles }} -->
       <div  v-if="article.user_name" class="tags has-addons">
      <span class="tag is-danger"> {{ article.user_name}}</span>
        <a class="tag is-delete"></a>
             </div>
           <h1 class="title is-left"> Article Title </h1> 
         <p> {{article.article_name}} </p>
          <h1 class="title">  Article Description </h1> 
         <p> {{article.article_description}} </p>
          <h1 class="title">  Article Tags</h1> 
         <p> {{article.tags}} </p>
         

       
  </div>
  <router-view />  
 </div>
 
</template>

<script>
import Router from 'vue-router'
import Vue from 'vue'
import axios from 'axios'

Vue.use(Router)
export default {
 name: 'Home',
 data() {
     return  {
           articles: [],
           users: [],
           user: this.$store.state.user["update_user"][0]
       }
     
 },

 created() {
     
     let user = this.$store.state.user["update_user"][0]
       
       axios.get("/articles", {
         params: {
           user_id: user.id
         }
       })
       .then(response => (this.articles = response.data))
       .catch((error) => {
         console.log(error)
       })
        axios.get("/users")
       .then(response => (this.users = response.data))
       .catch((error) => {
         console.log(error)
       })
 }

   
}
</script>

<style>
   body {
     color: white;
   }
   #feed {
    margin-left: 450px;
    margin-top: 50px;
}
</style>