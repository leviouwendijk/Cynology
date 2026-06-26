import References

public enum CynologyCitationClusters {
    public static let perceived_control_over_aversive_experience: ReferenceGroup = [
        CynologySources.Physiology.personal_causation_perceived_control,
        CynologySources.Physiology.nonveridical_perceived_control,
        CynologySources.Physiology.self_control_predictability,
        CynologySources.Physiology.stressor_controllability_analgesia,
        CynologySources.Physiology.helplessness_to_controllability,
        CynologySources.Physiology.predictability_controllability_virtual_fence,
    ]

    public static let aversive_stress_and_controllability: ReferenceGroup =
        perceived_control_over_aversive_experience
        + CynologySources.Physiology.psychological_factors_stress_disease
        + CynologySources.Physiology.noncontingent_aversive_stimulation
        + CynologySources.Physiology.learned_helplessness_at_fifty

    public static let e_collar_welfare: ReferenceGroup = [
        CynologySources.Physiology.predictability_controllability_virtual_fence,
        CynologySources.Physiology.shock_collar_effects,
        CynologySources.Physiology.electronic_collar_pinch_quitting_signal,
        CynologySources.Physiology.hunting_dogs_confronted_with_sheep,
        CynologySources.Physiology.second_year_sheep_aversion,
    ]
}
