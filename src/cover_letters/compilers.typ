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
  addressee: "Sir",
)

#coverletter-content[
  I am writing to apply for the position of Software Engineer - Compilers (Job ID 2024-12963).

  = Motivation
  For the past two years I have been working as a Software Engineer at Arm in
  the Trusted Firmware team. Although I enjoy my current role, my passion is in
  programming lanauges and compilers and I am always on the lookout for
  opportunities to work on compilers in Arm.

  = Compiler experience
  Although I do not have experience working on the GNU toolchain, I do have
  experience working on other compilers, both back-end and front-end.  I have
  experience of compiler front-ends from my studies at university, where I
  implemented a compiler for a subset of Rust as my final year project.
  Although my work on Rust was mostly focused on backend optimizations, I did
  investigate adding a new lint to the Rust frontend to detect ABI
  incompatibilities arising from using the `c_char` type as a signed integer
  (which it is on x86_64) rather than an unsigned integer (which it is on
  AArch64). Alas, I ran out of time and was unable to complete the project
  before my rotation ended.

  As part of my Rust rotation at Arm, I contributed several improvements to the
  code generation for the AArch64 target as part of our mission to improve
  performance of Rust code on the AArch64 target. I have also contributed to the
  Wasmtime project in my own time. My contributions included new peephole
  optimizations and canonicalization of commutative operators in the Cranelift
  middle-end optimizer; and various improvements to the ISLE pattern-matching
  DSL used in Cranelift.

  = C experience
  During my time at Arm, I have worked on large C codebases (Linux, Hafnium) and
  C++ codebases (LLVM).
  As part of my responsibilities in the Trusted Firmware team, I have pushed to
  incorporate more static and dynamic checks into the codebase to ensure
  correctness and reliability. For example, I enabled compile-time checking of
  format strings for `printf` in the Hafnium codebase, which required rewriting
  our `printf` implementation to conform to the C standard. I have led the
  migration of the Hafnium codebase from clang 16 to clang 18, and hope to
  migrate to clang 19 and C23 in the near future.

  = Assembly experience
  I have a good knowledge of the Arm instruction set, both the 32-bit version
  which I learnt at university, and the 64-bit version which I have learnt since
  joining Arm. I enjoy analyzing the assembly emitted by clang, GCC, and rustc
  and trying to find missed optimization opportunities. I have filed several
  bugs on the LLVM issue tracker where I have noticed suboptimal code
  generation.
]
