; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1877 () Bool)

(assert start!1877)

(declare-fun res!8460 () Bool)

(declare-fun e!5378 () Bool)

(assert (=> start!1877 (=> (not res!8460) (not e!5378))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1877 (= res!8460 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1877 e!5378))

(assert (=> start!1877 true))

(declare-datatypes ((array!718 0))(
  ( (array!719 (arr!311 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!311 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!718)

(declare-fun array_inv!261 (array!718) Bool)

(assert (=> start!1877 (array_inv!261 xx!44)))

(declare-fun f!58 () array!718)

(assert (=> start!1877 (array_inv!261 f!58)))

(declare-fun b!10194 () Bool)

(declare-fun res!8457 () Bool)

(declare-fun e!5379 () Bool)

(assert (=> b!10194 (=> (not res!8457) (not e!5379))))

(declare-fun fInv!0 (array!718) Bool)

(assert (=> b!10194 (= res!8457 (fInv!0 f!58))))

(declare-fun b!10192 () Bool)

(declare-fun res!8458 () Bool)

(assert (=> b!10192 (=> (not res!8458) (not e!5378))))

(declare-fun xxInv!0 (array!718) Bool)

(assert (=> b!10192 (= res!8458 (xxInv!0 xx!44))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4820 () (_ BitVec 32))

(declare-fun lt!4819 () (_ BitVec 32))

(declare-fun b!10195 () Bool)

(assert (=> b!10195 (= e!5379 (and (bvsle i!179 (bvadd lt!4819 jz!32)) (bvsge (bvadd (bvsub lt!4820 lt!4819) i!179) #b00000000000000000000000000000000) (let ((ix!141 (bvadd (bvsub lt!4820 lt!4819) i!179))) (or (bvslt ix!141 #b00000000000000000000000000000000) (bvsge ix!141 #b00000000000000000000000001000010)))))))

(declare-fun b!10193 () Bool)

(assert (=> b!10193 (= e!5378 e!5379)))

(declare-fun res!8459 () Bool)

(assert (=> b!10193 (=> (not res!8459) (not e!5379))))

(assert (=> b!10193 (= res!8459 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd lt!4820 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4819 jz!32 #b00000000000000000000000000000001))))))

(declare-fun lt!4818 () (_ BitVec 32))

(assert (=> b!10193 (= lt!4820 (ite (bvslt lt!4818 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4818))))

(assert (=> b!10193 (= lt!4818 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10193 (= lt!4819 (bvsub (size!311 xx!44) #b00000000000000000000000000000001))))

(assert (= (and start!1877 res!8460) b!10192))

(assert (= (and b!10192 res!8458) b!10193))

(assert (= (and b!10193 res!8459) b!10194))

(assert (= (and b!10194 res!8457) b!10195))

(declare-fun m!18047 () Bool)

(assert (=> start!1877 m!18047))

(declare-fun m!18049 () Bool)

(assert (=> start!1877 m!18049))

(declare-fun m!18051 () Bool)

(assert (=> b!10194 m!18051))

(declare-fun m!18053 () Bool)

(assert (=> b!10192 m!18053))

(push 1)

(assert (not b!10194))

(assert (not b!10192))

(assert (not start!1877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

