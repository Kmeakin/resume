#import "@preview/modern-cv:0.7.0": *

#show: resume.with(
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
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
)

= Experience
#resume-entry(
  title: "Software Engineer",
  location: "Cambridge, United Kingdom",
  date: "January 2023 - Present",
  description: "Arm, CE-OSS, Trusted Firmware",
)
#resume-item[
  - Maintained Hafnium, the Secure Partition Manager (SPM) reference
    implementation for Arm's Firmware Framework specification.
  - Implemented new features to ensure compliance with latest version of FF-A
    specification.
  - Sought out opportunities to improve security and reliability of the Hafnium codebase using
    static analyser and compiler tools.
    - Enabled checking of `printf` format-strings at compile-time, which required
      rewriting `printf` implementation to conform to the C language standard.
    - Parallelised the invocation of `clang-tidy` to reduce time spent waiting
      for static analysis results in CI.
    - Enabled `-Werror` compiler flag and fixed all warnings in the codebase.
    - Upgraded out of date `clang` toolchain from v16 to v18, and resolved to keep up
      to date with future `clang` releases.
]

#resume-entry(
  title: "Graduate Software Engineer",
  location: "Cambridge, United Kingdom",
  date: "May 2022 - December 2022",
  description: "Arm, CE-OSS, Morello",
)
#resume-item[
  - Maintened Morello, AArch64's implementation of the CHERI memory
    protection model.
  - Progressed towards enabling power-saving CPU states in Linux when running
    on Morello.
    - Added device-tree idle state definitions required to support power-saving
      CPU states when not using ACPI.
    - Added LPI state definitions to ACPI required to support power-saving CPU
      states when using ACPI.
]

#resume-entry(
  title: "Graduate Software Engineer",
  location: "Cambridge, United Kingdom",
  date: "September 2021 - April 2022",
  description: "Arm, CE-OSS, Rust",
)
#resume-item[
  - Implemented feature support and performance improvements for the AArch64
    Rust target.
  - Setup an internal deployment of `crater`, Rust's regression testing tool.
  - Investigated changing the default linker on Rust's AArch64 target to `lld`
    to reduce compile-times
    - Using the internal `crater` deployment, identified libraries that would be
      broken by the change, and worked with maintainers to fix them.
    - Benchmarked the compile-time improvements of using `lld` on the
      `rustc-perf` benchmark suite.
  - Contributed AArch64-specific optimizations to LLVM, to improve code generated
    for the Rust standard library
    - Optimised checked 128-bit integer arithmetic to use add-with-carry instructions
      rather than materializing the carry flag from intermediate steps.
    - Merged `AND`/`ORR`s of `CMP` instructions into chains of `CCMP`.
    - Simplified nested `CSEL` instructions.
  - Investigated adding a new lint to the Rust compiler to detect ABI
    incompatibilities arising from differences in the definition of the `c_char`
    type between AArch64 and x86_64.
]

= Open Source Contributions
#resume-entry(
  title: "Wasmtime",
  date: "2023 - 2024",
  location: github-link("bytecodealliance/wasmtime"),
  description: "Own-time contributor",
)
#resume-item[
  - Contributions to Cranelift, the native code compiler for the Wasmtime
    WebAssembly runtime.
    - Added new rewrites to the peephole optimisation pass.
    - Modified the Global Value Numbering pass to sort arguments to commutative
      operators, to increase the number of instructions eliminated by the pass
      (unfortunately later reverted due to regression in compile-times).
    - Implemented boolean and integer types for `ISLE`, Cranelift's
      pattern-matching DSL.
    - Various minor bug-fixes and documentation improvements to `ISLE`.
  - Contributions to Pulley, the portable bytecode interpreter that allows
    Wasmtime to run WebAssembly on targets that are not yet supported by
    Cranelift.
    - Rewrote the bytecode interpreter to use the tail-recursive interpreter
      pattern to reduce branch mispredictions in opcode dispatch.
    - Added instructions for pushing and popping multiple registers to/from the stack
      in a single instruction.
    - Reduced the size of the most commonly used instructions from 4 bytes to 3
      bytes by packing the register arguments into a bitfield.
]

#resume-entry(
  title: "Fathom",
  date: "2022 - 2023",
  location: github-link("yeslog/fathom"),
  description: "Own-time contributor",
)
#resume-item[
  - Contributions to Fathom, a dependently-typed data definition language.
  - Added implicit arguments, so that users can omit arguments
    that can be inferred from the context.
  - Added tuple expressions and tuple types.
  - Added `if` expressions to the language.
  - Investigated and fixed exponential memory usage in printing of nested
    expressions.
  - Investigated methods for compiling pattern matching to simpler trees of
    switch expressions, and for checking patterns for exhaustiveness and
    redundancy.
]

= Skills
#resume-skill-item(
  "Programming Languages",
  ("C", "C++", "Rust", "Assembly (AArch64, x86_64, RISC-V)", "Python", "Shell"),
)
#resume-skill-item(
  "Technologies",
  ("Linux", "Git", "Docker"),
)

= Education
#resume-entry(
  title: "University of Manchester",
  date: "2018 - 2021",
  description: "BSc Computer Science",
)
#resume-item[
  - Graduated with First Class Honours
  - Awarded Undergraduate Scholarship for academic performance in 1st year
  - Modules studied included: Compilers, Computer Architecture, Microcontrollers
  - Undergraduate dissertation: "An LLVM-based compiler for a subset of Rust"
]

#resume-entry(
  title: "Kingston Grammar School",
  date: "2016 - 2018",
  description: "A Levels",
)
#resume-item[
  - Mathematics: $A^*$
  - Economics: $A^*$
  - Physics: $A$
]

#resume-entry(
  title: "Kingston Grammar School",
  date: "2014 - 2016",
  description: "GCSE",
)
#resume-item[
  - 9 $A^*$s, 1 $A$
  - Awarded academic scholarship for A levels based on GCSE results
]
