(define (problem instance_1)
	(:domain PolyCraft)

	(:init
		(= (trees_in_map) 207)
		(= (count_log_in_inventory) 50)
		(= (count_planks_in_inventory) 22)
		(= (count_stick_in_inventory) 49)
		(= (count_sack_polyisoprene_pellets_in_inventory) 0)
		(= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)