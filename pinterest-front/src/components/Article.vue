<template>
<div id="article"> 
       <form ref='articleform' class="box" >
           <div class="field">
         <div class="control" >
             <label class="label"> Article Name</label>
             <input  class="input" type="text" v-model="article.article_name" placeholder="enter the article name" id="email">
         </div>
           </div>
           <div class="field">
         <div class="control">
             <label class="label" for="textarea"> Article Description</label>
             <textarea  class="textarea" v-model="article.article_description" rows="3" placeholder="add the description" id="lastname"></textarea>
         </div>
           </div>
         
         <div class="field">
         <div class="control">
             <label class="label"> tags</label>
             <input  class="input" type="text"  v-model="article.tags" placeholder="add tags" id="lastname">
         </div>
         </div>
         <button  class="button is-info" type="button" v-on:click="postArticle"> Post Article </button>
     </form>
</div>



  
</template>

<script>

import axios from 'axios'

export default {
    name: 'Article',
  data() {
      return {
        article: {    
        article_name: '',
        article_description: '',
        tags: '',
        category: 1,
        user_id: this.$store.state.user["update_user"][0]["id"],
        article_response: ''
          }
       
        
      }
  },

   created() {
       this.postArticle()
   },
   methods: {

       postArticle() {
             let user = this.$store.state.user["update_user"][0]
              axios.post('/articles', this.article,  {
                  data: {
                      user_name: user["first_name"]
                  }

              })
              .then(response => (this.article_response = response.data))
              .catch((error) => {  
               console.log(error)
              }) 
              this.$refs.articleform.reset();
       }
   }
}
</script>

<style>

#article {
    margin-left: 450px;
    margin-top: 60px;
}

</style>