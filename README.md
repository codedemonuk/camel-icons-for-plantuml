# Camel Icons for PlantUML

PlantUML icons and macros to help you document your Apache Camel routes.

## Getting started

Include the following references into your PlantUml file to reference these icons.
You can see pin your reference to a specific release by using that version in the path.

```plantuml
!define CamelPuml https://raw.githubusercontent.com/codedemonuk/camel-icons-for-plantuml/0.3.0/src
!include CamelPuml/CamelRoute.puml
```

## Example

The following PlantUml

```plantuml
@startuml

!define CamelPuml https://raw.githubusercontent.com/codedemonuk/camel-icons-for-plantuml/0.3.0/src
!include CamelPuml/CamelRoute.puml

queue "Events" as inputQueue
queue "More Events" as otherInputQueue
interface "Topic" as topic
interface "Filtered Topic" as filteredTopic

CamelRoute(myRoute, "Process", "processRoute")
CamelRoute(myOtherRoute, "Process and Filter", "processFilterRoute", "Process and filter events before publishing them")

inputQueue --> myRoute
myRoute --> topic

otherInputQueue --> myOtherRoute
myOtherRoute --> filteredTopic

@enduml
```

will generate the following diagram

![Example diagram showing the Camel components](./docs/example.png)
