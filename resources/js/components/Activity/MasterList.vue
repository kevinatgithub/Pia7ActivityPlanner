<template>
    <div class="row">
        <div class="col-sm-12">
            <h2 style="color:#fff; text-align:center;">Select Activity</h2>

            <div class="col-lg-4 col-md-6 mt-1 activity-card"  v-for="a in activities" :key="a.id">
                <div :class="'card bg-dark text-' + a.textColor">
                    <img class="card-img" :src="a.img" alt="Card image">
                    <div class="card-img-overlay">
                        <h5 class="card-title">{{a.title}}</h5>
                        <p class="card-text">{{a.partner}}</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</template>

<script>
let activities = [
    {
        id : 0, 
        title : "Acting Academy", 
        partner : "Star Magic",
        img : "https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/54/larger/Activities-ActingAcad.jpeg?1508897010",
        textColor : "white"
    },
    {
        id : 1, 
        title : "Art and Design Academy", 
        partner : "National Bookstore",
        img : "https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/595/larger/Activities-ArtsNDesign.jpeg?1508900326",
        textColor : "white"
    },
    {
        id : 2, 
        title : "Aviation Academy", 
        partner : "Cebu Pacific",
        img : "https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/55/larger/Activities-Aviation2.jpeg?1508897053",
        textColor : "white"
    },
    {
        id : 3, 
        title : "BakeShop", 
        partner : "Goldilucks",
        img : "https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/58/larger/Activities-Bakeshop.jpeg?1508898097",
        textColor : "white"
    },
    {
        id : 4, 
        title : "Bank", 
        partner : "Bank of the Philippine Islands",
        img : "https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/59/larger/Activities-Bank.jpeg?1508897601",
        textColor : "black"
    },
    {
        id : 5, 
        title : "Beauty Salon", 
        partner : "Beauty Salon",
        img : "https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/371/larger/Activities-BeautySalon.jpeg?1508853969",
        textColor : "white"
    },
];
export default {
    data(){
        return {
            activities
        }
    }
}
</script>

<style scoped>
.activity-card{
    max-height: 100px !important;
    overflow: hidden;
    border:none !important;
    cursor: pointer;
}
.activity-card:hover{
    border:5px solid #fff;
}
</style>
