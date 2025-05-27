
extern crate nalgebra;

fn main() {
    // Inizializza il mondo fisico
    let mut gravity = Vector::y() * -9.81;
    let mut integration_parameters = IntegrationParameters::default();
    let mut physics_pipeline = PhysicsPipeline::new();
    let mut island_manager = IslandManager::new();
    let mut broad_phase = BroadPhase::new();
    let mut narrow_phase = NarrowPhase::new();
    let mut impulse_joint_set = ImpulseJointSet::new();
    let mut multibody_joint_set = MultibodyJointSet::new();
    let mut ccd_solver = CCDSolver::new();

    let mut bodies = RigidBodySet::new();
    let mut colliders = ColliderSet::new();

    // Crea un pavimento
    let ground = RigidBodyBuilder::fixed().translation(na::vector![0.0, -1.0, 0.0]);
    let ground_handle = bodies.insert(ground);
    let collider = ColliderBuilder::cuboid(10.0, 0.1, 10.0);
    colliders.insert_with_parent(collider, ground_handle, &mut bodies);

    // Crea una sfera
    let sphere = RigidBodyBuilder::dynamic().translation(na::vector![0.0, 10.0, 0.0]);
    let sphere_handle = bodies.insert(sphere);
    let collider = ColliderBuilder::ball(1.0);
    colliders.insert_with_parent(collider, sphere_handle, &mut bodies);

    // Loop di simulazione
    for i in 0..100 {
        physics_pipeline.step(
            &gravity,
            &integration_parameters,
            &mut island_manager,
            &mut broad_phase,
            &mut narrow_phase,
            &mut bodies,
            &mut colliders,
            &mut impulse_joint_set,
            &mut multibody_joint_set,
            &mut ccd_solver,
            None,
            (),
        );

        let sphere_pos = bodies.get(sphere_handle).unwrap().position();
        println!("Frame {}: Sfera a {:?}", i, sphere_pos);
    }
}