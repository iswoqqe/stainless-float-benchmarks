; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2463 () Bool)

(assert start!2463)

(declare-fun b!12886 () Bool)

(declare-datatypes ((Unit!1383 0))(
  ( (Unit!1384) )
))
(declare-datatypes ((array!894 0))(
  ( (array!895 (arr!387 (Array (_ BitVec 32) (_ BitVec 32))) (size!387 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!218 0))(
  ( (tuple3!219 (_1!305 Unit!1383) (_2!305 array!894) (_3!237 (_ BitVec 32))) )
))
(declare-fun e!7070 () tuple3!218)

(declare-datatypes ((tuple4!256 0))(
  ( (tuple4!257 (_1!306 Unit!1383) (_2!306 array!894) (_3!238 (_ BitVec 32)) (_4!128 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!6450 () tuple4!256)

(declare-fun lt!6445 () (_ BitVec 32))

(declare-fun Unit!1385 () Unit!1383)

(assert (=> b!12886 (= e!7070 (tuple3!219 Unit!1385 (_2!306 lt!6450) lt!6445))))

(declare-fun b!12887 () Bool)

(declare-fun e!7066 () Bool)

(declare-fun i!271 () (_ BitVec 32))

(declare-fun jz!59 () (_ BitVec 32))

(assert (=> b!12887 (= e!7066 (and (bvslt i!271 jz!59) (not (= (bvand jz!59 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!59 #b10000000000000000000000000000000) (bvand (bvsub jz!59 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!12888 () Bool)

(declare-fun lt!6452 () (_ FloatingPoint 11 53))

(declare-fun e!7071 () tuple4!256)

(declare-fun lt!6447 () array!894)

(declare-fun Unit!1386 () Unit!1383)

(assert (=> b!12888 (= e!7071 (tuple4!257 Unit!1386 lt!6447 jz!59 lt!6452))))

(declare-fun lt!6448 () (_ BitVec 32))

(declare-fun b!12889 () Bool)

(declare-datatypes ((tuple4!258 0))(
  ( (tuple4!259 (_1!307 Unit!1383) (_2!307 (_ BitVec 32)) (_3!239 array!894) (_4!129 (_ BitVec 32))) )
))
(declare-fun e!7067 () tuple4!258)

(declare-fun Unit!1387 () Unit!1383)

(assert (=> b!12889 (= e!7067 (tuple4!259 Unit!1387 lt!6448 (_2!306 lt!6450) lt!6445))))

(declare-fun b!12890 () Bool)

(declare-fun res!10224 () Bool)

(assert (=> b!12890 (=> (not res!10224) (not e!7066))))

(declare-datatypes ((array!896 0))(
  ( (array!897 (arr!388 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!388 (_ BitVec 32))) )
))
(declare-fun qq!48 () array!896)

(declare-fun qqInv!0 (array!896) Bool)

(assert (=> b!12890 (= res!10224 (qqInv!0 qq!48))))

(declare-fun b!12891 () Bool)

(declare-fun e!7068 () Bool)

(declare-fun e!7072 () Bool)

(assert (=> b!12891 (= e!7068 e!7072)))

(declare-fun res!10222 () Bool)

(assert (=> b!12891 (=> (not res!10222) (not e!7072))))

(declare-fun lt!6451 () (_ FloatingPoint 11 53))

(assert (=> b!12891 (= res!10222 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!6451) (fp.lt lt!6451 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000))))))

(assert (=> b!12891 (= lt!6451 (fp.sub roundNearestTiesToEven (_4!128 lt!6450) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!128 lt!6450) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!128 lt!6450) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!128 lt!6450) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!128 lt!6450) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!12891 (= lt!6450 e!7071)))

(declare-fun c!1547 () Bool)

(assert (=> b!12891 (= c!1547 (bvsgt jz!59 #b00000000000000000000000000000000))))

(declare-fun q!93 () array!896)

(assert (=> b!12891 (= lt!6452 (select (arr!388 q!93) jz!59))))

(assert (=> b!12891 (= lt!6447 (array!895 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!12892 () Bool)

(declare-fun res!10223 () Bool)

(assert (=> b!12892 (=> (not res!10223) (not e!7066))))

(declare-fun iq!194 () array!894)

(assert (=> b!12892 (= res!10223 (and (bvsle (select (arr!387 iq!194) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (= (size!388 qq!48) #b00000000000000000000000000010100)))))

(declare-fun b!12893 () Bool)

(declare-fun res!10220 () Bool)

(assert (=> b!12893 (=> (not res!10220) (not e!7068))))

(declare-fun qInv!0 (array!896) Bool)

(assert (=> b!12893 (= res!10220 (qInv!0 q!93))))

(declare-fun b!12894 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!896 array!894 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!256)

(assert (=> b!12894 (= e!7071 (computeModuloWhile!0 jz!59 q!93 lt!6447 jz!59 lt!6452))))

(declare-fun res!10221 () Bool)

(assert (=> start!2463 (=> (not res!10221) (not e!7068))))

(assert (=> start!2463 (= res!10221 (and (bvsle #b00000000000000000000000000000010 jz!59) (bvslt jz!59 #b00000000000000000000000000010011)))))

(assert (=> start!2463 e!7068))

(assert (=> start!2463 true))

(declare-fun array_inv!336 (array!894) Bool)

(assert (=> start!2463 (array_inv!336 iq!194)))

(declare-fun array_inv!337 (array!896) Bool)

(assert (=> start!2463 (array_inv!337 qq!48)))

(assert (=> start!2463 (array_inv!337 q!93)))

(declare-fun b!12895 () Bool)

(declare-fun res!10218 () Bool)

(assert (=> b!12895 (=> (not res!10218) (not e!7066))))

(declare-fun iqInv!0 (array!894) Bool)

(assert (=> b!12895 (= res!10218 (iqInv!0 iq!194))))

(declare-fun b!12896 () Bool)

(assert (=> b!12896 (= e!7072 e!7066)))

(declare-fun res!10219 () Bool)

(assert (=> b!12896 (=> (not res!10219) (not e!7066))))

(declare-fun lt!6443 () Bool)

(declare-fun lt!6444 () tuple3!218)

(assert (=> b!12896 (= res!10219 (and (bvsle #b00000000000000000000000000000000 (select (arr!387 (_2!305 lt!6444)) (bvsub jz!59 #b00000000000000000000000000000001))) (bvsle (select (arr!387 (_2!305 lt!6444)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (not lt!6443) (not (= (_3!237 lt!6444) #b00000000000000000000000000000000)) (not (= (select (arr!387 (_2!305 lt!6444)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))) (bvsle (select (arr!387 (_2!305 lt!6444)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000011111111111111111111111) (bvsle #b00000000000000000000000000000000 i!271) (bvsle i!271 jz!59)))))

(assert (=> b!12896 (= lt!6444 e!7070)))

(declare-fun c!1545 () Bool)

(assert (=> b!12896 (= c!1545 lt!6443)))

(assert (=> b!12896 (= lt!6445 #b00000000000000000000000000000000)))

(assert (=> b!12896 (= lt!6443 (bvsge (select (arr!387 (_2!306 lt!6450)) (bvsub jz!59 #b00000000000000000000000000000001)) #b00000000100000000000000000000000))))

(declare-fun b!12897 () Bool)

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!896 (_ BitVec 32) array!894 (_ BitVec 32)) tuple4!258)

(assert (=> b!12897 (= e!7067 (computeModuloWhile!3 jz!59 q!93 lt!6448 (_2!306 lt!6450) lt!6445))))

(declare-fun lt!6446 () tuple4!258)

(declare-fun lt!6449 () (_ BitVec 32))

(declare-fun b!12898 () Bool)

(declare-fun Unit!1388 () Unit!1383)

(assert (=> b!12898 (= e!7070 (tuple3!219 Unit!1388 (array!895 (store (arr!387 (_3!239 lt!6446)) (bvsub jz!59 #b00000000000000000000000000000001) (ite (= (_4!129 lt!6446) #b00000000000000000000000000000000) (bvsub #b00000001000000000000000000000000 lt!6449) (bvsub #b00000000111111111111111111111111 lt!6449))) (size!387 (_3!239 lt!6446))) (_4!129 lt!6446)))))

(assert (=> b!12898 (= lt!6448 #b00000000000000000000000000000000)))

(declare-fun c!1546 () Bool)

(assert (=> b!12898 (= c!1546 (bvslt lt!6448 (bvsub jz!59 #b00000000000000000000000000000001)))))

(assert (=> b!12898 (= lt!6446 e!7067)))

(assert (=> b!12898 (= lt!6449 (select (arr!387 (_3!239 lt!6446)) (bvsub jz!59 #b00000000000000000000000000000001)))))

(assert (= (and start!2463 res!10221) b!12893))

(assert (= (and b!12893 res!10220) b!12891))

(assert (= (and b!12891 c!1547) b!12894))

(assert (= (and b!12891 (not c!1547)) b!12888))

(assert (= (and b!12891 res!10222) b!12896))

(assert (= (and b!12896 c!1545) b!12898))

(assert (= (and b!12896 (not c!1545)) b!12886))

(assert (= (and b!12898 c!1546) b!12897))

(assert (= (and b!12898 (not c!1546)) b!12889))

(assert (= (and b!12896 res!10219) b!12895))

(assert (= (and b!12895 res!10218) b!12892))

(assert (= (and b!12892 res!10223) b!12890))

(assert (= (and b!12890 res!10224) b!12887))

(declare-fun m!20907 () Bool)

(assert (=> b!12895 m!20907))

(declare-fun m!20909 () Bool)

(assert (=> b!12896 m!20909))

(declare-fun m!20911 () Bool)

(assert (=> b!12896 m!20911))

(declare-fun m!20913 () Bool)

(assert (=> b!12891 m!20913))

(declare-fun m!20915 () Bool)

(assert (=> start!2463 m!20915))

(declare-fun m!20917 () Bool)

(assert (=> start!2463 m!20917))

(declare-fun m!20919 () Bool)

(assert (=> start!2463 m!20919))

(declare-fun m!20921 () Bool)

(assert (=> b!12894 m!20921))

(declare-fun m!20923 () Bool)

(assert (=> b!12893 m!20923))

(declare-fun m!20925 () Bool)

(assert (=> b!12892 m!20925))

(declare-fun m!20927 () Bool)

(assert (=> b!12890 m!20927))

(declare-fun m!20929 () Bool)

(assert (=> b!12897 m!20929))

(declare-fun m!20931 () Bool)

(assert (=> b!12898 m!20931))

(declare-fun m!20933 () Bool)

(assert (=> b!12898 m!20933))

(push 1)

(assert (not b!12895))

(assert (not start!2463))

(assert (not b!12893))

(assert (not b!12894))

(assert (not b!12890))

(assert (not b!12897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

