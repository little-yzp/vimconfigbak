function Show(start,...)
    echo "start is ".a:start
    let index=1
    while index <= a:0
	echo "Arg ".index."is".a:{index}
	let index=index+1
    endwhile
endfunction
