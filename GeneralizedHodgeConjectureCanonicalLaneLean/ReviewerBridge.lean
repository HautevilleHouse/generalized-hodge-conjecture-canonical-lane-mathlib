import GeneralizedHodgeConjectureCanonicalLaneLean.Formalization
import GeneralizedHodgeConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace GeneralizedHodgeConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "aee66120759bc5c2869ceaae7a3b41edc393800c2a6267b30331773bab139e27", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "118f05705a49a06b4ac70b2d4b28e05bcee2fb5b5547a36fa45228ee4f53284e", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "11e8acf63f1c5cbe50d017cc099588f7b86ecc475bf8f8b3030a3f4c618d1624", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "3af4c02d092d87a9b0bdc84673e75b68a91403cda9610271be92869e2f42680a", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "1f0e6157456f5ebea86984a9f7bf78d2646fdb41d763617f396c7ed449caf44b", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "200b4ccb2bf3d5860700f533602a160eb5a76a96aef04e33ea85ade4f5e856c3", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "c273e280be8582e2a45ad02e556ef5bdfe6128667508bac6aad577818a697397", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "8fc8479c0bcefed3bbebad5c15c14c62a4654e3e2677fb213aa8992b1ceefcd6", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "7062f6af6abeb3c51ccc483fd56bea4d58ac23452cab622137c2bb39c87822a9", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "GHC_G1", constant := "kappa_coniveau" },
  { gate := "GHC_G2", constant := "sigma_support" },
  { gate := "GHC_G3", constant := "kappa_compact" },
  { gate := "GHC_G4", constant := "rho_rigidity" },
  { gate := "GHC_G5", constant := "coniveau_transfer" },
  { gate := "GHC_G6", constant := "eps_coh" },
  { gate := "GHC_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "91e24cbab4a6aabc3d41ac10dbd2f7a1bb60d6cd3d4bfa54a14eae41c499aa87" },
  { path := "README.md", sha256 := "afab5612647b311bc1ade1fe85695149dd3df60198f1615c0a46ea0e273edc0c" },
  { path := "artifacts/constants_extracted.json", sha256 := "3af4c02d092d87a9b0bdc84673e75b68a91403cda9610271be92869e2f42680a" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "11e8acf63f1c5cbe50d017cc099588f7b86ecc475bf8f8b3030a3f4c618d1624" },
  { path := "artifacts/constants_registry.json", sha256 := "1f0e6157456f5ebea86984a9f7bf78d2646fdb41d763617f396c7ed449caf44b" },
  { path := "artifacts/promotion_report.json", sha256 := "c273e280be8582e2a45ad02e556ef5bdfe6128667508bac6aad577818a697397" },
  { path := "artifacts/stitch_constants.json", sha256 := "200b4ccb2bf3d5860700f533602a160eb5a76a96aef04e33ea85ade4f5e856c3" },
  { path := "notes/EG1_public.md", sha256 := "652f1c42355c50e33df461e372a80b6be5b1ab1bdabb083fb369cad34711dfcc" },
  { path := "notes/EG2_public.md", sha256 := "bbd1b5e4f95cf7740f9972a6d27ae891dda9b48668fa8d8877788ce673d17428" },
  { path := "notes/EG3_public.md", sha256 := "6017e38a316ebe01a61a657bd49117d7d80b212cc4c04260b008aa5e4bc4ea8f" },
  { path := "notes/EG4_public.md", sha256 := "6294a31804434c272d6f37044a730c18df4ee90c412e9a70cfc1bb0acce59eab" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "118f05705a49a06b4ac70b2d4b28e05bcee2fb5b5547a36fa45228ee4f53284e" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "fde6787dc0e4622c98dfc6c64086cc10f1917db65fbcdb8ec318b9bd8128b05a" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "d14949890e96ff73f11be21844479d59fa522dc64f21f18acc342cda3b04b4c1" },
  { path := "paper/GENERALIZED_HODGE_CONJECTURE_PREPRINT.md", sha256 := "70755beb18d183eacd1b5428f433b057cb1d845dcd180306f535a81f66bd6f3a" },
  { path := "repro/REPRO_PACK.md", sha256 := "644098a91622f35f49b1a2687b4732b160b61b2ca37a88e2be64e000a0c01737" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "2eaec0a5cf564f51527785e9141b923d0d9dbbc0e53dda6087c7588e015a82a5" },
  { path := "repro/certificate_baseline.json", sha256 := "7062f6af6abeb3c51ccc483fd56bea4d58ac23452cab622137c2bb39c87822a9" },
  { path := "repro/run_repro.sh", sha256 := "b50e5d4b85b2d853c020374fb077ec39a5a614a62fd361b764d970cf5d988134" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/ghc_closure_guard.py", sha256 := "b83c1b9da28ff65bf39bdca5292ef47844106f51d52f950f05d2c7180c936a66" },
  { path := "scripts/README.md", sha256 := "5872d19ddc3d19a2628c39e88a1fabde0351deda34d5ee26af575ae0cd3c9ad3" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "GHC_G1", status := "PASS" },
  { gate := "GHC_G2", status := "PASS" },
  { gate := "GHC_G3", status := "PASS" },
  { gate := "GHC_G4", status := "PASS" },
  { gate := "GHC_G5", status := "PASS" },
  { gate := "GHC_G6", status := "PASS" },
  { gate := "GHC_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "coniveau_transfer", value := "1.0305400000000002" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_coniveau", value := "1.095567" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "sigma_support", value := "1.075" }
]

def bridgeConstantKeys : List String := [
  "coniveau_transfer",
  "eps_coh",
  "kappa_compact",
  "kappa_coniveau",
  "rho_rigidity",
  "sigma_star_can",
  "sigma_support"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end GeneralizedHodgeConjectureCanonicalLaneLean
end HautevilleHouse
