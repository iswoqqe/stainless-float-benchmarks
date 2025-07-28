; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2161 () Bool)

(assert start!2161)

(declare-fun res!8690 () Bool)

(declare-fun e!6158 () Bool)

(assert (=> start!2161 (=> (not res!8690) (not e!6158))))

(declare-datatypes ((array!795 0))(
  ( (array!796 (arr!348 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!348 (_ BitVec 32))) )
))
(declare-fun fq!120 () array!795)

(assert (=> start!2161 (= res!8690 (= (size!348 fq!120) #b00000000000000000000000000010100))))

(assert (=> start!2161 e!6158))

(declare-fun array_inv!297 (array!795) Bool)

(assert (=> start!2161 (array_inv!297 fq!120)))

(assert (=> start!2161 true))

(declare-fun b!10849 () Bool)

(declare-fun res!8691 () Bool)

(assert (=> b!10849 (=> (not res!8691) (not e!6158))))

(declare-fun fqInv!0 (array!795) Bool)

(assert (=> b!10849 (= res!8691 (fqInv!0 fq!120))))

(declare-fun b!10850 () Bool)

(declare-fun jz!77 () (_ BitVec 32))

(declare-fun i!347 () (_ BitVec 32))

(assert (=> b!10850 (= e!6158 (and (bvsle #b00000000000000000000000000000000 jz!77) (bvslt jz!77 #b00000000000000000000000000010100) (bvsle #b11111111111111111111111111111111 i!347) (not (= (bvand jz!77 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!77 #b10000000000000000000000000000000) (bvand (bvsub jz!77 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!2161 res!8690) b!10849))

(assert (= (and b!10849 res!8691) b!10850))

(declare-fun m!16837 () Bool)

(assert (=> start!2161 m!16837))

(declare-fun m!16839 () Bool)

(assert (=> b!10849 m!16839))

(check-sat (not b!10849) (not start!2161))
(check-sat)
