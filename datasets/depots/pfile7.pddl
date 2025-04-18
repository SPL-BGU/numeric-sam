(define (problem depotprob78) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate12)
	(at pallet1 distributor0)
	(clear crate11)
	(at pallet2 distributor1)
	(clear crate10)
	(at truck0 distributor0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 439)
	(at truck1 depot0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 398)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor1)
	(on crate0 pallet2)
	(= (weight crate0) 33)
	(at crate1 distributor0)
	(on crate1 pallet1)
	(= (weight crate1) 77)
	(at crate2 distributor1)
	(on crate2 crate0)
	(= (weight crate2) 61)
	(at crate3 depot0)
	(on crate3 pallet0)
	(= (weight crate3) 94)
	(at crate4 distributor0)
	(on crate4 crate1)
	(= (weight crate4) 56)
	(at crate5 distributor0)
	(on crate5 crate4)
	(= (weight crate5) 99)
	(at crate6 depot0)
	(on crate6 crate3)
	(= (weight crate6) 72)
	(at crate7 depot0)
	(on crate7 crate6)
	(= (weight crate7) 36)
	(at crate8 depot0)
	(on crate8 crate7)
	(= (weight crate8) 68)
	(at crate9 distributor1)
	(on crate9 crate2)
	(= (weight crate9) 9)
	(at crate10 distributor1)
	(on crate10 crate9)
	(= (weight crate10) 5)
	(at crate11 distributor0)
	(on crate11 crate5)
	(= (weight crate11) 24)
	(at crate12 depot0)
	(on crate12 crate8)
	(= (weight crate12) 94)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate11)
		(on crate2 pallet1)
		(on crate3 crate5)
		(on crate5 crate2)
		(on crate6 pallet0)
		(on crate7 crate0)
		(on crate8 crate7)
		(on crate9 crate8)
		(on crate10 crate3)
		(on crate11 pallet2)
	)
)

(:metric minimize (fuel-cost)))
