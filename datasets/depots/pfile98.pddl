(define (problem depotprob39) (:domain depot)
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
	(clear crate3)
	(at pallet2 distributor1)
	(clear pallet2)
	(at truck0 distributor1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 360)
	(at truck1 distributor0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 396)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 depot0)
	(on crate0 pallet0)
	(= (weight crate0) 39)
	(at crate1 depot0)
	(on crate1 crate0)
	(= (weight crate1) 60)
	(at crate2 depot0)
	(on crate2 crate1)
	(= (weight crate2) 51)
	(at crate3 distributor0)
	(on crate3 pallet1)
	(= (weight crate3) 93)
	(at crate4 depot0)
	(on crate4 crate2)
	(= (weight crate4) 72)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate2)
		(on crate1 crate3)
		(on crate2 pallet0)
		(on crate3 pallet1)
		(on crate4 pallet2)
	)
)

(:metric minimize (total-time)))
