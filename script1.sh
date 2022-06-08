input="manifold-s0.3.xyz"
output="${input}.sep.xyz"
nat=$(head -1 ${input}|awk '{print $1}')
nconf=$((nat/5))

rm -f ${output}
for i in $(seq 1 $nconf); do pos=$(head -$((i*5+2)) ${input} | tail -5); echo "5\nfree\n${pos}" >> ${output};  done
