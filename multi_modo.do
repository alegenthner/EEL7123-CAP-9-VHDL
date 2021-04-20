force -freeze sim:/multi_modo/mmCLK 1 0, 0 {5000 ps} -r {10 ns}
force -freeze sim:/multi_modo/mmRST 1
force -freeze sim:/multi_modo/mmENA 0
force -freeze sim:/multi_modo/mmSelect 01
force -freeze sim:/multi_modo/mmIn 0011001101110010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 0
force -freeze sim:/multi_modo/mmSelect 01
force -freeze sim:/multi_modo/mmIn 0000000000000000
run 20 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 1
force -freeze sim:/multi_modo/mmSelect 01
force -freeze sim:/multi_modo/mmIn 0000000000101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 1
force -freeze sim:/multi_modo/mmSelect 11
force -freeze sim:/multi_modo/mmIn 0000000000101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 1
force -freeze sim:/multi_modo/mmSelect 00
force -freeze sim:/multi_modo/mmIn 0000000000101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 1
force -freeze sim:/multi_modo/mmSelect 11
force -freeze sim:/multi_modo/mmIn 0000000000101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 1
force -freeze sim:/multi_modo/mmSelect 11
force -freeze sim:/multi_modo/mmIn 0000000000101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 1
force -freeze sim:/multi_modo/mmSelect 00
force -freeze sim:/multi_modo/mmIn 0000000000101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 0
force -freeze sim:/multi_modo/mmSelect 00
force -freeze sim:/multi_modo/mmIn 0000000000101010
run 100 ns
