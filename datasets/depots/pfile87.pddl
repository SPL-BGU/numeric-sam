(define (problem depotprob15) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate1)
	(at pallet1 distributor0)
	(clear pallet1)
	(at pallet2 distributor1)
	(clear pallet2)
	(at truck0 depot0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 257)
	(at truck1 distributor1)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 347)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 depot0)
	(on crate0 pallet0)
	(= (weight crate0) 36)
	(at crate1 depot0)
	(on crate1 crate0)
	(= (weight crate1) 5)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet0)
		(on crate1 pallet1)
	)
)

(:metric minimize (total-time)))
