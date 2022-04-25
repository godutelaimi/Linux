#!/bin/bash
check_number() {
	local __check_number=$1
	local lottery_number=$2
	local x

	for ((x = 0; x < ${#lottery[@]} ; x ++ ))
	do
	  if [ ${lottery[$x]} -eq $lottery_number ]
          then
           eval $__check_number=true
	  fi
	done
}

generate_main_number() {
  local number

  number_type=$1

  number_picked=false
  until $number_picked ; do
    if [ $number_type == "First" ]
    then
      number=$(( $RANDOM % 24 + 1 ))
    else
      number=$(( $RANDOM % 24 + 26 ))
    fi
    number_exists=false
    check_number number_exists $number
    if ! $number_exists
    then
      return $number
      number_picked=true
    fi
  done
}

main () {
  local x
  #Generate 1st number
  lottery[0]=$(( $RANDOM % 49 +1 ))
  #gENERATE 2ND and third lottery numbers between 1 and 50
  for ((x = 0; x <= 1 ; x ++ ))
  do
    generate_main_number "First"
    lottery[1+$x]=$?
  done

  #Generate 4th and fifth lottery numbers between 1 and 50
  for ((x = 0; x <= 1 ; x ++ ))
  do
    generate_main_number "Second"
    lottery[3+$x]=$?
 done
 #Generate 2 lucku numbers and ensure they are different
  lottery[6]=$(( $RANDOM % 10 +1 ))
  correct_number=false
  until  $correct_number ; do
    lottery[7]=$(( $RANDOM % 10 +1 ))
    if [ ${lottery[6]} -ne ${lottery[7]} ]
    then
     correct_number=true
    fi
 done

 #display lottery number
  echo ${lottery[@]}
}

  #Calls main function to start program
  main if [ $number_type == "First" ]
    then
      number=$(( $RANDOM % 24 + 1 ))
    else
      number=$(( $RANDOM % 24 + 26 ))
    fi
    number_exists=false
    check_number number_exists $number
    if ! $number_exists
    then
      return $number
      number_picked=true
    fi
  done
}

main () {
  local x
  #Generate 1st number
  lottery[0]=$(( $RANDOM % 49 +1 ))
  #gENERATE 2ND and third lottery numbers between 1 and 50
  for ((x = 0; x <= 1 ; x ++ ))
  do
    generate_main_number "First"
    lottery[1+$x]=$?
  done

  #Generate 4th and fifth lottery numbers between 1 and 50
  for ((x = 0; x <= 1 ; x ++ ))
  do
    generate_main_number "Second"
    lottery[3+$x]=$?
 done
 #Generate 2 lucku numbers and ensure they are different
  lottery[6]=$(( $RANDOM % 10 +1 ))
  correct_number=false
  until  $correct_number ; do
    lottery[7]=$(( $RANDOM % 10 +1 ))
    if [ ${lottery[6]} -ne ${lottery[7]} ]
    then
     correct_number=true
    fi
 done

 #display lottery number
  echo ${lottery[@]}
}

  #Calls main function to start program
  main
 #display lottery number
  echo ${lottery[@]}
}

  #Calls main function to start program
  main if [ $number_type == "First" ]
    then
      number=$(( $RANDOM % 24 + 1 ))
    else
      number=$(( $RANDOM % 24 + 26 ))
    fi
    number_exists=false
    check_number number_exists $number
    if ! $number_exists
    then
      return $number
      number_picked=true
    fi
  done
}

main () {
  local x
  #Generate 1st number
  lottery[0]=$(( $RANDOM % 49 +1 ))
  #gENERATE 2ND and third lottery numbers between 1 and 50
  for ((x = 0; x <= 1 ; x ++ ))
  do
    generate_main_number "First"
    lottery[1+$x]=$?
  done

  #Generate 4th and fifth lottery numbers between 1 and 50
  for ((x = 0; x <= 1 ; x ++ ))
  do
    generate_main_number "Second"
    lottery[3+$x]=$?
 done
 #Generate 2 lucku numbers and ensure they are different
  lottery[6]=$(( $RANDOM % 10 +1 ))
  correct_number=false
  until  $correct_number ; do
    lottery[7]=$(( $RANDOM % 10 +1 ))
    if [ ${lottery[6]} -ne ${lottery[7]} ]
    then
     correct_number=true
    fi
 done

 #display lottery number
  echo ${lottery[@]}
}





"lotterynumbers.sh" 126L, 2476B  




