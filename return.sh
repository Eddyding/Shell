#!/bin/bash

testreturn()
{
	echo "before return"
	return 10
	echo "after return"
}
testreturn 

return 90
echo "blabla"
