(define (problem instance_99)
	(:domain PolyCraft)

	(:init
		(= (trees_in_map) 113)
		(= (count_log_in_inventory) 17)
		(= (count_planks_in_inventory) 24)
		(= (count_stick_in_inventory) 58)
		(= (count_sack_polyisoprene_pellets_in_inventory) 0)
		(= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)