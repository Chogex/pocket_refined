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

/// Calculates if random number is within given percentage
/// @param percentage Percentage to check
/// Returns boolean value
function sc_roll_percentage(percentage) {
   return irandom(99) < percentage;
}

/// Calculate the innate strength value based on 4 weights
/// @param max_chance chance for max innate str
/// @param three_chance chance for 3 innate str
/// @param two_chance chance for 2 innate str
/// @param one_chance chance for 1 innate str
function sc_roll_innate(max_chance, three_chance, two_chance, one_chance) {
   var innate = sc_calculate_weights([[max_chance, innate_max], [three_chance, 3], [two_chance, 2], [one_chance, 1]]);
   return innate[1];
}