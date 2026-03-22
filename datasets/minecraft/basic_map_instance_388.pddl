(define (problem instance_388)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 195) (= (count_log_in_inventory) 15) (= (count_planks_in_inventory) 28) (= (count_stick_in_inventory) 17) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)