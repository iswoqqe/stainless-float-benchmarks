; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1863 () Bool)

(assert start!1863)

(declare-fun b!10110 () Bool)

(declare-fun res!8373 () Bool)

(declare-fun e!5294 () Bool)

(assert (=> b!10110 (=> (not res!8373) (not e!5294))))

(declare-datatypes ((array!704 0))(
  ( (array!705 (arr!304 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!304 (_ BitVec 32))) )
))
(declare-fun f!58 () array!704)

(declare-fun fInv!0 (array!704) Bool)

(assert (=> b!10110 (= res!8373 (fInv!0 f!58))))

(declare-fun b!10109 () Bool)

(declare-fun e!5297 () Bool)

(assert (=> b!10109 (= e!5297 e!5294)))

(declare-fun res!8376 () Bool)

(assert (=> b!10109 (=> (not res!8376) (not e!5294))))

(declare-fun e!15 () (_ BitVec 32))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4762 () (_ BitVec 32))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun lt!4763 () (_ BitVec 32))

(assert (=> b!10109 (= res!8376 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4762 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4762) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4763 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10109 (= lt!4762 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun xx!44 () array!704)

(assert (=> b!10109 (= lt!4763 (bvsub (size!304 xx!44) #b00000000000000000000000000000001))))

(declare-fun res!8375 () Bool)

(assert (=> start!1863 (=> (not res!8375) (not e!5297))))

(assert (=> start!1863 (= res!8375 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1863 e!5297))

(assert (=> start!1863 true))

(declare-fun array_inv!254 (array!704) Bool)

(assert (=> start!1863 (array_inv!254 xx!44)))

(assert (=> start!1863 (array_inv!254 f!58)))

(declare-fun b!10108 () Bool)

(declare-fun res!8374 () Bool)

(assert (=> b!10108 (=> (not res!8374) (not e!5297))))

(declare-fun xxInv!0 (array!704) Bool)

(assert (=> b!10108 (= res!8374 (xxInv!0 xx!44))))

(declare-fun b!10111 () Bool)

(assert (=> b!10111 (= e!5294 (and (bvsle i!179 (bvadd lt!4763 jz!32)) (let ((lhs!49 (bvadd lt!4763 jz!32))) (and (= (bvand lhs!49 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!49 #b10000000000000000000000000000000) (bvand (bvadd lhs!49 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))

(assert (= (and start!1863 res!8375) b!10108))

(assert (= (and b!10108 res!8374) b!10109))

(assert (= (and b!10109 res!8376) b!10110))

(assert (= (and b!10110 res!8373) b!10111))

(declare-fun m!17991 () Bool)

(assert (=> b!10110 m!17991))

(declare-fun m!17993 () Bool)

(assert (=> start!1863 m!17993))

(declare-fun m!17995 () Bool)

(assert (=> start!1863 m!17995))

(declare-fun m!17997 () Bool)

(assert (=> b!10108 m!17997))

(push 1)

(assert (not start!1863))

(assert (not b!10110))

(assert (not b!10108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

