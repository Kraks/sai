name := "SAI"

organization := "org.scala-lang.lms"

scalaVersion := "2.11.2"

scalaOrganization := "org.scala-lang.virtualized"
resolvers += Resolver.sonatypeRepo("snapshots")
resolvers += Resolver.sonatypeRepo("releases")

autoCompilerPlugins := true

//addCompilerPlugin("org.scala-lang.plugins" % "scala-continuations-plugin_2.12.0" % "1.0.3")
addCompilerPlugin("org.scala-lang.plugins" % "scala-continuations-plugin_2.11.2" % "1.0.2")
addCompilerPlugin("org.spire-math" %% "kind-projector" % "0.9.9")
addCompilerPlugin("org.scalamacros" % "paradise" % "2.1.0" cross CrossVersion.full)

//libraryDependencies += "org.scala-lang.plugins" % "scala-continuations-library_2.12" % "1.0.3"
libraryDependencies += "org.scala-lang.plugins" % "scala-continuations-library_2.11" % "1.0.2"
libraryDependencies += "com.github.mpilquist" %% "simulacrum" % "0.15.0"

scalacOptions += "-P:continuations:enable"

libraryDependencies += "org.scala-lang.lms" %% "lms-core" % "1.0.0-SNAPSHOT"

libraryDependencies += "org.scala-lang.virtualized" % "scala-compiler" % "2.11.2"
libraryDependencies += "org.scala-lang.virtualized" % "scala-library" % "2.11.2"
libraryDependencies += "org.scala-lang.virtualized" % "scala-reflect" % "2.11.2"
libraryDependencies += "org.scalatest" % "scalatest_2.11" % "2.2.2"

libraryDependencies += "org.scala-lang.modules" %% "scala-parser-combinators" % "1.0.6"

scalacOptions += "-Yvirtualize"
scalacOptions += "-deprecation"
scalacOptions += "-feature"
