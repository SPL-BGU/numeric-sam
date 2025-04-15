(define (problem depotprob50) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 distributor0)
	(clear crate3)
	(at pallet2 distributor1)
	(clear crate0)
	(at truck0 depot0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 354)
	(at truck1 depot0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 208)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor1)
	(on crate0 pallet2)
	(= (weight crate0) 39)
	(at crate1 distributor0)
	(on crate1 pallet1)
	(= (weight crate1) 38)
	(at crate2 distributor0)
	(on crate2 crate1)
	(= (weight crate2) 51)
	(at crate3 distributor0)
	(on crate3 crate2)
	(= (weight crate3) 67)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet2)
		(on crate1 crate0)
		(on crate2 pallet1)
	)
)

(:metric minimize (total-time)))
