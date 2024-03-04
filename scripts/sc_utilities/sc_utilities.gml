function calculateWeights(itemPercentages, maxWeight)
/// Calculate Weights from Percentages. They must add up to exactly 100%    
/// @param itemPercentages The percentages of each item
/// @param maxWeight The current maximum total weight
/// Returns an array of weights for each item
{
    var numItems = array_length(itemPercentages)
    var totalPercentage = 0;
    var totalWeight = 0;
    var weights = array_create(numItems, 0);

    // Calculate total percentage and weights
    for (var i = 0; i < numItems; i++)
    {
        totalPercentage += itemPercentages[i];
        weights[i] = totalWeight + (itemPercentages[i] / 100) * maxWeight;
        totalWeight += weights[i];
    }

    /* Scale weights if necessary
    if (totalWeight != maxWeight)
    {
        if (scale)
        {
            var scale = maxWeight / totalWeight;
            for (var j = 0; j < numItems; j++)
            {
                weights[j] *= scale;
            }
            totalWeight = maxWeight;
        }
    }
    */

    return weights;
}