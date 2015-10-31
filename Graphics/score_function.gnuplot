s(x,a,k,M,E)= (x<E ? a*x/E : a*(1-k*(1+(M-E)/(x-M))))

set title font ",14"
set tics font ",12"
set xlabel font ",14"
set ylabel font ",14"

#For different values of alpha
#set xrange [0:5]
#set yrange [0:30]
#set xlabel "V_{int}"
#set ylabel "score"
#set title "Evaluation of s(V_{int}) for different values of &{1} {/Symbol a}\nK=1, V_{max}=5, V_{easy}=4"
#plot for [a=1:20:4] s(x,a,1,5,4) title sprintf("{/Symbol a} = %d", a)
#
#For different values of K
set xrange [0:5]
set yrange [0:10]
set xlabel "V_{int}"
set ylabel "score"
set title "Evaluation of s(V_{int}) for different values of &{1} K, \n{/Symbol a}=1, V_{max}=5, V_{easy}=4"
plot for [k=1:20:4] s(x,1,k,5,4) title sprintf("K = %d", k)
# vim : set tw=0 :
