# SwiftySLS
 
The purpose of this project is to develop a model of a space life support system, which is a vital component of any long-duration space mission. The model is designed to simulate the key functions of an SLS, including air and water recycling, waste management, and food production. This early version 1 is mostly to get myself acclimated to the level of integration and experiment with different architectures. A subsequent version will utilize complete basic architecture of an SLS as described by [NASA] (https://www.nasa.gov/content/life-support-systems).

The ultimate goal of the project is to create a tool that can help me explore modeling, as well as help me prepare for potential work in space life support systems engineering as part of my graduate training.

As most other projects of mine, this project is implemented in Swift, i.e., one of the most underrated scientific programming languages. The code is organized into several modules, each of which represents a different aspect of the space life support system. The modules are designed to be modular and easily extensible, allowing me to add new features and functionality as needed.

## Background on Space Life Support (SLS) Systems 

SLS systems are critical components of deep space habitation systems, which are necessary to sustain human life beyond Earth's protective atmosphere and resources. SLS activities are geared towards developing the capabilities required to sustain humans who live and work in space.

SLS systems are essential in ensuring a safe environment for astronauts and keeping them alive by monitoring atmospheric pressure, oxygen levels, waste management, water supply, fire detection and suppression, and more. NASA's life support systems have been developed over the past forty years, with significant advancements that remain heavily dependent on Earth's resources.

The existing life support systems on the International Space Station (ISS) mainly provide oxygen, absorb carbon dioxide, and manage vaporous emissions from the astronauts themselves. However, the analysis of these systems allows NASA to identify areas where additional technology development is needed to improve reliability and effectiveness.

The systems architecture of an SLS system is necessarily complex and contextualized to the resources available at the location of deployment. Designing one is therefore case specific, though the general architectures do shar emany significant traits, such as the various systems onboard. The environmental monitoring of spacecraft is also critical since any issue could compromise the enclosed environment and cause it to become unsafe.

Atmosphere management is another essential component of LSS as it includes air revitalization, which involves generating and recovering oxygen, removing carbon dioxide, and controlling trace contaminants and particulates. Water management is also essential for long-duration human exploration in deep space as it aims to recycle crew-member urine, wastewater, and humidity for reuse as clean water.

To achieve the goal of sustaining human life beyond Earth, the LSS work is focused on developing technologies to achieve 98% water loop closure, increasing reliability and robustness, and reducing mass, power, and volume compared to current technologies.


## Usage

To run the space life support system model, simply download the source code and run it in Xcode or another Swift development environment. The model takes several inputs, including the number of crew members, the duration of the mission, and the types and quantities of resources available.

The output of the model includes detailed information about the performance of the space life support system, including the amount of air and water recycled, the amount of waste produced and disposed of, and the amount of food grown and harvested. Assumptions and limitations of the model are also discussed, including the simplifications and approximations used to make the model computationally feasible.





