(define (problem depotprob70) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate1)
	(at pallet1 distributor0)
	(clear crate3)
	(at pallet2 distributor1)
	(clear crate4)
	(at truck0 distributor1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 418)
	(at truck1 distributor0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 319)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor0)
	(on crate0 pallet1)
	(= (weight crate0) 52)
	(at crate1 depot0)
	(on crate1 pallet0)
	(= (weight crate1) 11)
	(at crate2 distributor1)
	(on crate2 pallet2)
	(= (weight crate2) 91)
	(at crate3 distributor0)
	(on crate3 crate0)
	(= (weight crate3) 54)
	(at crate4 distributor1)
	(on crate4 crate2)
	(= (weight crate4) 78)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate4)
		(on crate1 pallet0)
		(on crate3 pallet1)
		(on crate4 crate3)
	)
)

(:metric minimize (fuel-cost)))
