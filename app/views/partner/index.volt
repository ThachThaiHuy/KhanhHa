<section class="section">
<h3 class="heading-primary mt-15 mb15"><strong>{{pageTitle}}</strong></h3>
  <hr>
      <?php 
      if(count($partnerList) >0){
        foreach ($partnerList as $partner) {?>
           <div class="col-sm-4 height-200">
            <img class="img-center" src="{{partner.image}}" alt="{{partner.name}}" title="{{partner.name}}" /> 
           </div>
      <?php } } else { ?>
        <h4> Hiện tại chưa có thông tin về đối tác </h4>
     <?php 
      } ?>
</section>

