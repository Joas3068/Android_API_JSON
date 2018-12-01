

awk 'BEGIN{ print "------Percent of Cheese Pizzas------" ;}

{if(NR !=1) sum +=$2; sumC +=$5}

END {  print "%"(sumC/sum)*100;print "------End Of Report------";

}' pizzaOrders.txt