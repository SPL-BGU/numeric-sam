(define (problem depotprob3) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate4)
	(at pallet1 distributor0)
	(clear crate1)
	(at pallet2 distributor1)
	(clear crate3)
	(at truck0 depot0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 279)
	(at truck1 depot0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 326)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor1)
	(on crate0 pallet2)
	(= (weight crate0) 14)
	(at crate1 distributor0)
	(on crate1 pallet1)
	(= (weight crate1) 57)
	(at crate2 distributor1)
	(on crate2 crate0)
	(= (weight crate2) 21)
	(at crate3 distributor1)
	(on crate3 crate2)
	(= (weight crate3) 78)
	(at crate4 depot0)
	(on crate4 pallet0)
	(= (weight crate4) 10)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate3)
		(on crate1 pallet1)
		(on crate3 pallet0)
		(on crate4 crate1)
	)
)

(:metric minimize (total-time)))
