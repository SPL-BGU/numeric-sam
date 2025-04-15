(define (problem depotprob58) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate1)
	(at pallet1 distributor0)
	(clear crate2)
	(at pallet2 distributor1)
	(clear pallet2)
	(at truck0 distributor1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 278)
	(at truck1 depot0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 293)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 depot0)
	(on crate0 pallet0)
	(= (weight crate0) 75)
	(at crate1 depot0)
	(on crate1 crate0)
	(= (weight crate1) 8)
	(at crate2 distributor0)
	(on crate2 pallet1)
	(= (weight crate2) 28)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet0)
		(on crate1 crate0)
		(on crate2 pallet2)
	)
)

(:metric minimize (fuel-cost)))
