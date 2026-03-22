(define (problem instance_445)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 204) (= (count_log_in_inventory) 6) (= (count_planks_in_inventory) 13) (= (count_stick_in_inventory) 5) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)