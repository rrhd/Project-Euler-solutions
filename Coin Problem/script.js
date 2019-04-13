function denomination(coins, original_amount){
    var original_amount = original_amount;
    var original_best = [ ];

    for(var i=0;i<coins.length; i++){
      var amount = original_amount;
      var best = [ ];
      var tempBest = [ ]
      while(coins[i]<=amount){
        amount = amount - coins[i];
        best.push(coins[i]);
      }
      if(amount>0 && coins.length>1){
        tempBest = denomination(coins.slice(0,i).concat(coins.slice(i+1,coins.length)), amount);
        //best = best.concat(denomination(coins.splice(i,1), amount));
      }
      if(tempBest.length!=0 || (best.length!=0 && amount==0)){
        best = best.concat(tempBest);
        if(original_best.length==0 ){
          original_best = best
        }else if(original_best.length > best.length ){
          original_best = best;
        }  
      }
    }
    return original_best;  
  }
  denomination( [1,10,3,9] , 19 );