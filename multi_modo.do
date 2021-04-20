force -freeze sim:/multi_modo/mmCLK 1 0, 0 {5000 ps} -r {10 ns}
force -freeze sim:/multi_modo/mmRST 1
force -freeze sim:/multi_modo/mmENA 0
force -freeze sim:/multi_modo/mmSelect 01
force -freeze sim:/multi_modo/mmIn 1010101010101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 0
force -freeze sim:/multi_modo/mmSelect 01
force -freeze sim:/multi_modo/mmIn 1010101010101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 0
force -freeze sim:/multi_modo/mmSelect 01
force -freeze sim:/multi_modo/mmIn 1010101010101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 1
force -freeze sim:/multi_modo/mmSelect 01
force -freeze sim:/multi_modo/mmIn 1010101010101010
run 10 ns
force -freeze sim:/multi_modo/mmRST 0
force -freeze sim:/multi_modo/mmENA 0
force -freeze sim:/multi_modo/mmSelect 01
force -freeze sim:/multi_modo/mmIn 1010101010101010
run 10 ns
-- until here is a mere test were to see if the enable
-- reset system works smoothly ;)
