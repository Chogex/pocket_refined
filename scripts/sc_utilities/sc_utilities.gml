function sc_calculate_weights(items)
/// Picks a random item from an array based on weights
/// @param items Array in the form of [weight][item]
/// Returns a random item from the array
{
   var rnd = irandom(sc_sum_weights(items)-1);
   for(var i = 0; i < array_length(items); i++)
   {
      rnd -= items[i][0];
      if(rnd <= 0) {
		  return items[i];
	  }
   }
   return items[array_length(items)-1];
}

function sc_sum_weights(items){
	var sum = 0;
	
   for(var i = 0; i < array_length(items); i++)
   {
      sum += items[i][0];
   }
   return sum;
}