<template>
<div>
     <div  class="box"  id="article" v-for="article in articles" :key="article">

    
         <h1 class="title"> Article Title </h1> 
         <p> {{article.article_name}} </p>
          <h1 class="title">  Article Description </h1> 
         <p> {{article.article_description}} </p>
          <h1 class="title">  Article Tags</h1> 
         <p> {{article.tags}} </p>

         <button class="button is-ghost" v-on:click="deleteArticle(article)" method="delete"> delete </button> 

       
  </div>
</div>
</template>

<script>
import axios from 'axios'
export default {

    name: 'UserArticle',
    data() {
        return {
         
         id: this.$store.state.user["update_user"][0]["id"],
         articles: [],
         article: "",
        }
    },
    
    created() {
        this.deleteArticle();
    },
    methods: {
        
        deleteArticle(article) {

            console.log(article.id)
       
               axios.delete('/articles/:id', {
                   data: {
                       id: article.id
                   }
               })
                .then(response =>(this.articles = response.data))
                .catch((error) => {
                    console.log(error)
               }) 

               
               

            //    this.articles.splice(article.id, 1)
               
        }
       

    },


    mounted() {
        axios.get('/articles/',{
            params: {
                id: this.id
            }
        })
        .then(response =>(this.articles = response.data))
        .catch((error) => {
            console.log(error)
        })   
    }


}
</script>
#article {
    margin-left: 450px;
  
}
 h1 {
    color: darkblue

}
<style>

</style>