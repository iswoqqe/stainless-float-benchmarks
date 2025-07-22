; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1695 () Bool)

(assert start!1695)

(declare-fun res!7246 () Bool)

(declare-fun e!4934 () Bool)

(assert (=> start!1695 (=> (not res!7246) (not e!4934))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1695 (= res!7246 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1695 e!4934))

(assert (=> start!1695 true))

(declare-datatypes ((array!679 0))(
  ( (array!680 (arr!299 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!299 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!679)

(declare-fun array_inv!249 (array!679) Bool)

(assert (=> start!1695 (array_inv!249 xx!44)))

(declare-fun f!58 () array!679)

(assert (=> start!1695 (array_inv!249 f!58)))

(declare-fun b!8855 () Bool)

(declare-fun res!7249 () Bool)

(assert (=> b!8855 (=> (not res!7249) (not e!4934))))

(declare-fun xxInv!0 (array!679) Bool)

(assert (=> b!8855 (= res!7249 (xxInv!0 xx!44))))

(declare-fun b!8856 () Bool)

(declare-fun e!4937 () Bool)

(assert (=> b!8856 (= e!4934 e!4937)))

(declare-fun res!7247 () Bool)

(assert (=> b!8856 (=> (not res!7247) (not e!4937))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4446 () (_ BitVec 32))

(declare-fun lt!4445 () (_ BitVec 32))

(assert (=> b!8856 (= res!7247 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4445 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4445) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4446 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!8856 (= lt!4445 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!8856 (= lt!4446 (bvsub (size!299 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!8858 () Bool)

(assert (=> b!8858 (= e!4937 (and (bvsle i!179 (bvadd lt!4446 jz!32)) (let ((i!181 (bvadd i!179 #b00000000000000000000000000000001))) (and (bvsle i!181 (bvadd lt!4446 jz!32)) (let ((tmp!177 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))) (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt tmp!177 #b00000000000000000000000000000000) #b00000000000000000000000000000000 tmp!177) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsgt i!181 (bvadd (bvsub (size!299 xx!44) #b00000000000000000000000000000001) jz!32))))))))))

(declare-fun b!8857 () Bool)

(declare-fun res!7248 () Bool)

(assert (=> b!8857 (=> (not res!7248) (not e!4937))))

(declare-fun fInv!0 (array!679) Bool)

(assert (=> b!8857 (= res!7248 (fInv!0 f!58))))

(assert (= (and start!1695 res!7246) b!8855))

(assert (= (and b!8855 res!7249) b!8856))

(assert (= (and b!8856 res!7247) b!8857))

(assert (= (and b!8857 res!7248) b!8858))

(declare-fun m!13335 () Bool)

(assert (=> start!1695 m!13335))

(declare-fun m!13337 () Bool)

(assert (=> start!1695 m!13337))

(declare-fun m!13339 () Bool)

(assert (=> b!8855 m!13339))

(declare-fun m!13341 () Bool)

(assert (=> b!8857 m!13341))

(check-sat (not b!8857) (not start!1695) (not b!8855))
(check-sat)
