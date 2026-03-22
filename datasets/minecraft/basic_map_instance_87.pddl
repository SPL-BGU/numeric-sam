(define (problem instance_87)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 206) (= (count_log_in_inventory) 50) (= (count_planks_in_inventory) 60) (= (count_stick_in_inventory) 45) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)