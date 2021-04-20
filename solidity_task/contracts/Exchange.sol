pragma solidity ^0.5.0;


contract Exchange{
	struct order{
		string side;
		uint price;
	}

	order[] public orders;

	function addOrder(string memory _side, uint _price) public {
		orders.push(order(_side,_price));
	}
    function buyOrder()public {
       uint len = orders.length;
       for(uint i=0; i<len;i++){
           for(uint j=i+1;j<len;j++){
               if(orders[i].price==orders[j].price
               && keccak256(abi.encodePacked((orders[i].side))) != keccak256(abi.encodePacked((orders[j].side)))){
                   delete orders[i];
                   delete orders[j];
               }
           }
       }
    
        
    }
}
	
	

	
