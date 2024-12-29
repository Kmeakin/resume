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
  - Maintain Hafnium, the Secure Partition Manager (SPM) reference
    implementation for Arm's Firmware Framework specification.
  - Implement new features to ensure compliance with latest version of FF-A
    specification.
  - Focus on improving security and reliability of the Hafnium codebase through
    static checks.
    - Enabled checking of `printf` format-strings at compile-time, which required
      rewriting `printf` implementation to conform to the C language standard.
    - Parallelised the invocation of `clang-tidy` to reduce time spent waiting
      for static analysis results in CI.
    - Enable `-Werror` compiler flag for all Hafnium code.
    - Upgraded out of date clang toolchain from v16 to v18, and resolved to keep up
      to date with future clang releases.
]

#resume-entry(
  title: "Graduate Software Engineer",
  location: "Cambridge, United Kingdom",
  date: "May 2022 - December 2022",
  description: "Arm, CE-OSS, Morello",
)
#resume-item[
  - Maintenance and internal improvements to Morello, AArch64's implementation
    of the CHERI memory protection model.
  - Worked on adding support for power-saving CPU states to Linux when running
    on Morello.
    - Added device-tree idle state defintions required to support power-saving
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
  - AArch64 feature support and performance improvements to the Rust and LLVM
    compilers.
  - Setup an internal deployment of `crater`, Rust's regression testing tool.
  - Investigated changing the default linker on Rust's `aarch64-linux` target to
    `lld` to reduce compile-times
    - Using the internal `crater` deployment, identified crates that would be
      broken by the change, and worked with maintainers to fix them.
    - Benchmarked the compile-time improvements of using `lld` on the
      `rustc-perf` benchmark suite.
  - Contributed AArch64-specific optimizations to LLVM, to improve code generated
    for the Rust standard library
    - Optimize checked 128-bit integer arithmetic to use add-with-carry instructions
      rather than materializing the carry flag from intermediate steps.
    - Merge `AND`/`ORR`s of `CMP` instructions into chains of `CCMP`.
    - Simplify nested `CSEL` instructions.
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
  - Contributed to Cranelift's corpus of peephole rewrites.
  - Canonicalize commutative operators in Cranelift's Global Value Numbering
    pass, to increase the number of instructions elimiated by the pass
    (unfortunately later reverted due to regression in compile-times).
  - Implementation of boolean and integer types for `ISLE`, Cranelift's
    pattern-matching DSL.
  - Various minor bug-fixes and documentation improvements to `ISLE`.
  - Rewrote the `pulley` bytecode interpreter to use the tail-recursive
    interpreter pattern to reduce branch mispredications in opcode dispatch.
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
  - Add `if` expressions to the language.
  - Investigated and fixed expontential memory usage in printing of nested
    expressions.
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
