# Forest Fire Tipping Point ABM

## Overview

This project is an agent-based model developed in NetLogo to explore the interaction between human-caused fire ignition, fire spread, and firefighter response.

The model investigates whether a critical number of firefighters is needed to prevent large-scale forest collapse under different levels of fire risk.

## Research Question

How many firefighters are needed to prevent a forest from burning down, given a fixed number of careless smokers?

## Model Components

The model contains three main components:

- Smokers, who move randomly and may ignite forest patches
- Firefighters, who detect and extinguish nearby fires
- Forest patches, which can be either healthy or burning

## Agent Behavior

### Smokers

Smokers move randomly across the environment.

When standing on a healthy forest patch, they may ignite it according to a predefined ignition probability.

### Firefighters

Firefighters search for active fires within a detection radius.

When a fire is detected, they move toward it and extinguish nearby burning patches.

### Fire Spread

Burning patches can spread fire to neighbouring healthy patches.

## Simulation Process

At each simulation tick:

1. Smokers move and may ignite a patch.
2. Existing fires spread.
3. Firefighters detect and respond to fires.
4. The percentage of burned forest is updated.
5. The simulation clock advances.

## Experimental Parameters

The main parameters are:

- Number of smokers
- Number of firefighters
- Ignition probability

## Preliminary Results

The simulations suggest the existence of a possible threshold in firefighter capacity.

For example, with one smoker and an ignition probability of 0.05, a run with two firefighters resulted in approximately 93.9% of the forest being burned, while a run with three firefighters resulted in no burned patches after more than 10,000 ticks.

These results should be interpreted as preliminary because the model is stochastic and the initial analysis was based on a limited number of simulation runs.

## Agent-Based Modeling Concepts

This model demonstrates several important ABM concepts:

- Emergence
- Stochasticity
- Local interaction
- Sensing
- Adaptation
- Spatial dynamics
- Tipping points

Forest survival or collapse is not directly programmed. Instead, it emerges from repeated local interactions between smokers, fire, and firefighters.

## Technology

- NetLogo
- Agent-Based Modeling
- ODD-style model documentation

## Files

`forest_fire_abm.nlogox`

Contains the NetLogo simulation model.

`forest_fire_presentation.pdf`

Contains the original project presentation, including the model design, ODD protocol, simulation examples, and preliminary results.

## Limitations

The current analysis uses a limited number of simulation runs.

Because the model includes stochastic processes, future work should perform repeated simulations for each parameter configuration.

This would allow estimation of measures such as:

- probability of forest collapse
- average percentage of forest burned
- mean survival time
- variation across runs

## Future Work

Future extensions could include:

- Monte Carlo experiments
- automated parameter sweeps
- sensitivity analysis
- comparison of firefighter strategies
- heterogeneous smoker behavior
- varying forest density

## Academic Context

This project was developed as part of the MSc Computational Social Science programme at Linköping University.

The Forest Fire model was a collaborative course project. Contributor names should be retained in the source code and project documentation.
