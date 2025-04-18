(define (problem depotprob76) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 - hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear crate6)
	(at pallet2 depot2)
	(clear crate11)
	(at pallet3 distributor0)
	(clear pallet3)
	(at pallet4 distributor1)
	(clear crate1)
	(at pallet5 distributor2)
	(clear crate7)
	(at pallet6 depot2)
	(clear crate10)
	(at pallet7 depot2)
	(clear crate3)
	(at pallet8 distributor1)
	(clear pallet8)
	(at truck0 distributor2)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 373)
	(at truck1 depot0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 258)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 distributor0)
	(available hoist3)
	(at hoist4 distributor1)
	(available hoist4)
	(at hoist5 distributor2)
	(available hoist5)
	(at hoist6 distributor2)
	(available hoist6)
	(at hoist7 depot1)
	(available hoist7)
	(at crate0 depot2)
	(on crate0 pallet6)
	(= (weight crate0) 39)
	(at crate1 distributor1)
	(on crate1 pallet4)
	(= (weight crate1) 66)
	(at crate2 depot2)
	(on crate2 pallet7)
	(= (weight crate2) 6)
	(at crate3 depot2)
	(on crate3 crate2)
	(= (weight crate3) 95)
	(at crate4 depot2)
	(on crate4 crate0)
	(= (weight crate4) 90)
	(at crate5 depot2)
	(on crate5 crate4)
	(= (weight crate5) 95)
	(at crate6 depot1)
	(on crate6 pallet1)
	(= (weight crate6) 94)
	(at crate7 distributor2)
	(on crate7 pallet5)
	(= (weight crate7) 80)
	(at crate8 depot2)
	(on crate8 crate5)
	(= (weight crate8) 57)
	(at crate9 depot2)
	(on crate9 pallet2)
	(= (weight crate9) 49)
	(at crate10 depot2)
	(on crate10 crate8)
	(= (weight crate10) 2)
	(at crate11 depot2)
	(on crate11 crate9)
	(= (weight crate11) 79)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate8)
		(on crate3 pallet4)
		(on crate4 crate9)
		(on crate5 pallet8)
		(on crate7 pallet0)
		(on crate8 pallet3)
		(on crate9 pallet7)
		(on crate10 pallet2)
		(on crate11 pallet5)
	)
)

(:metric minimize (total-time)))
