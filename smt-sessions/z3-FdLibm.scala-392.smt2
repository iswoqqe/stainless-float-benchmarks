; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2163 () Bool)

(assert start!2163)

(declare-fun res!8696 () Bool)

(declare-fun e!6164 () Bool)

(assert (=> start!2163 (=> (not res!8696) (not e!6164))))

(declare-datatypes ((array!797 0))(
  ( (array!798 (arr!349 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!349 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!797)

(assert (=> start!2163 (= res!8696 (= (size!349 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2163 e!6164))

(declare-fun array_inv!298 (array!797) Bool)

(assert (=> start!2163 (array_inv!298 fq!120)))

(assert (=> start!2163 true))

(declare-fun b!10855 () Bool)

(declare-fun res!8697 () Bool)

(assert (=> b!10855 (=> (not res!8697) (not e!6164))))

(declare-fun fqInv!0 (array!797) Bool)

(assert (=> b!10855 (= res!8697 (fqInv!0 fq!120))))

(declare-fun i!347 () (_ BitVec 32))

(declare-fun s!25 () (_ FloatingPoint 11 53))

(declare-fun b!10856 () Bool)

(declare-fun jz!77 () (_ BitVec 32))

(assert (=> b!10856 (= e!6164 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (bvsle i!347 (bvsub jz!77 #b00000000000000000000000000000001)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) s!25) (= (bvand i!347 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!347 #b10000000000000000000000000000000) (bvand (bvadd i!347 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2163 res!8696) b!10855))

(assert (= (and b!10855 res!8697) b!10856))

(declare-fun m!16841 () Bool)

(assert (=> start!2163 m!16841))

(declare-fun m!16843 () Bool)

(assert (=> b!10855 m!16843))

(check-sat (not start!2163) (not b!10855))
(check-sat)
