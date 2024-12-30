#import "@preview/modern-cv:0.7.0": *

#show: coverletter.with(
  author: (
    firstname: "Karl",
    lastname: "Meakin",
    email: "karlwfmeakin@gmail.com",
    phone: "(+44) 7508191866",
    github: "Kmeakin",
    address: "420 Milton Road, Cambridge, CB4 1ST",
    positions: (
      "Software Engineer",
    ),
  ),
  profile-picture: none,
  language: "en",
  font: "Times New Roman",
  // Remove the following line to show the footer
  // Or set the value to `true`
  show-footer: false,
  // set this to `none` to show the default or remove it completely
  closing: [],
)

#hiring-entity-info(entity-info: (
  target: "Claudio Bantaloukas",
  name: "Arm plc.",
  street-address: "110 Fulbourn Road",
  city: "Cambridge, United Kingdom",
))

#letter-heading(
  job-position: "Software Engineer - Compilers",
  addressee: "Mr Bantaloukas",
)

#coverletter-content[
  I am writing to apply for the position of Software Engineer - Compilers (Job
  ID 2024-12963). For the past two years I have been working as a Software
  Engineer at Arm in the Trusted Firmware team. Although I enjoy my current
  role, my passion is in compilers, interpreters and programming languages, and
  I am excited about this opportunity to contribute to the GNU compilers team at
  Arm. I believe I have the relevant experience and skills to excel in this
  role, which I have detailed below (please see also my attached CV).

  = Compiler experience
  Although I do not have experience working on the GNU toolchain, I do have
  experience working on other compilers, both back-end and front-end, from my
  time at Arm, my university studies and my own time contributions.
  
  As part of my Rust rotation at Arm, I contributed several improvements to
  LLVM's code generation for AArch64 as part of our mission to improve
  performance of Rust code on the AArch64 target. For this I had to learn both
  LLVM's target independent IR (LLVM-IR) and its target dependent IR
  (SelectionDAG), and would enjoy the opportunity to learn GCC's IR as well.

  I also investigated changing Rust's default linker to `lld` to reduce compile
  times on Aarch64 Linux targets. This required first setting up an internal
  deployment of Rust's `crater` tool to find Rust libraries that would be broken
  by the change and work with maintainers to resolve the issues. I then
  benchmarked the compile-time improvements from this change and presented the
  results to the Arm Rust team.

  I have also contributed to improving the performance the Wasmtime project in
  my own time. I have contributed new optimisations to Cranelift, such as
  additional rewrites for the peephole optimisation pass, and extended the
  Global Value Numbering pass to merge more instructions by sorting the
  arguments to commutative operators. I also contributed performance
  improvements to the Pulley bytecode interpreter.

  I find this kind of performance work very rewarding, as I know that I am not
  just improving the performance of one piece of software, but potentially all
  software that is compiled by the compiler.
  
  I also have experience in compiler front-ends (parsing, type-checking,
  semantic analysis, lowering ASTs to IR).
  For my final year project at university, I implemented a compiler to LLVM IR
  for a subset of Rust, which included features such as first class functions,
  structs and enums, and pattern matching. In the course of this I had to
  implement a lexer, parser, type-checker, a closure-conversion pass and finally
  lowering the typed AST to LLVM IR.

  I enjoy working on programming language design and implementation, as
  evidenced by my open source contributions to languages such as ISLE (a
  pattern-matching DSL for Cranelift) and Fathom (a dependently-typed data
  description language), and would appreciate the opportunity to implement
  new C/C++ features or static analyses in GCC.

  = C and C++ experience
  I have several years of C and C++ experience.  During my time at Arm, I have
  worked on large C codebases (Linux, Hafnium) and C++ codebases (LLVM). As part
  of my responsibilities in the Trusted Firmware team, I have been responsible
  for large scale refactoring and modernization efforts. I have also pushed to
  incorporate more static analyses into the codebase to ensure correctness and
  reliability. For example, I enabled compile-time checking of format strings
  for `printf` in the Hafnium codebase, which required rewriting our `printf`
  implementation to conform to the C standard. I have led the migration of the
  Hafnium codebase from clang 16 to clang 18, and hope to migrate to clang 19
  and C23 in the near future.

  I also believe that my Rust experience has made me a better C and C++
  programmer, by making explicit the concepts of resource lifetime and
  ownership, which are implicit in C and C++.

  = Assembly experience
  I have a strong knowledge of the Arm architecture and instruction set. I
  learnt about the 32-bit Arm architecture in my Computer Architecture modules
  at university, and was able to practice programming in Arm assembly in my
  microcontrollers module, in which I implemented routines to communicate with
  peripherals and handle interrupts.
  Since joining Arm, I have become familiar with the 64-bit iteration of the Arm
  architecture, and am confident in my ability to write Arm assembly and to spot
  missed optimisation opportunities. I enjoy analysing the assembly emitted by
  clang, GCC, and rustc and trying to find missed optimisation opportunities. I
  have filed several bugs on the LLVM issue tracker when I have noticed
  suboptimal code generation.

  I would highly appreciate an opportunity to meet with you to discuss this role
  and to answer any questions you may have about my application.

  // put most important/most relevant experience in
]
